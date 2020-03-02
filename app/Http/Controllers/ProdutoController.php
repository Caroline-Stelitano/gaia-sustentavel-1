<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Produto;
use App\Loja;
use Illuminate\Support\Facades\Input;

class ProdutoController extends Controller
{
    public function index() {
        $user = Auth::user();
        $loja = $user->loja->id;
        $products = Produto::where('store_id', $loja)->get();

        return view('meus-produtos', compact('products', 'loja', 'user'));
    }

    public function create() {
        $categories = \App\Categoria::all();
        $subcategories = \App\Subcategoria::all();
        
        return view('incluir-produto', compact('categories', 'subcategories'));
    }

    public function store(Request $request) {   
        $this->validate($request, [
            'name' => 'required|string',
            'price' => 'required|numeric',
            'description' => 'required|string',
            'composition' => 'required|string',
            'category_id' => 'required',
            'subcategory_id' => 'required',
            'img_product' => 'required|image',
        ], [
            'required' => 'Esse campo é obrigatório',
            'image' => 'O arquivo deve ser uma imagem',
            'numeric' => 'O campo deve ser preenchido com números apenas',
        ]);

        $dados = $request->all();
        $loja = Auth::user()->loja->id;

        $products = new \App\Produto();
        $products->name = $dados['name'];
        $products->price = $dados['price'];
        $products->description = $dados['description'];
        $products->composition = $dados['composition'];
        $products->category_id = $dados['category_id'];
        $products->subcategory_id = $dados['subcategory_id'];
        $products->store_id = $loja;
        
        if($file = $request->file('img_product')) {
            $name = $file->getClientOriginalName();
            if($file->move('img/produtos', $name)) {
                $products->img_product = $name;
            };
        };
        
        $products->save();

        return redirect('/meus-produtos');
    }

    public function show($id) {
        $product = \App\Produto::find($id);
        $category =  \App\Produto::find($id)->category_id;
        $relacionados = Produto::where('category_id', $category)->get();

        return view('produto',compact('product', 'relacionados'));
    }

    public function edit($id) {
        $products = \App\Produto::find($id);
        $categories = \App\Categoria::all();
        $subcategories = \App\Subcategoria::all();

        return view('meu-produto-edit',compact('products', 'categories', 'subcategories'));


    }    
    public function update(Request $request, $id) {
        $this->validate($request, [
            'name' => 'required|string',
            'price' => 'required|numeric',
            'description' => 'required|string',
            'composition' => 'required|string',
            'img_product' => 'required|image',
        ], [
            'required' => 'Esse campo é obrigatório',
            'image' => 'O arquivo deve ser uma imagem',
            'numeric' => 'O campo deve ser preenchido com números apenas',
        ]);

        $dados = $request->all();
        
        $products = \App\Produto::find($id);
        $products->name = $dados['name'];
        $products->price = $dados['price'];
        $products->description = $dados['description'];
        $products->composition = $dados['composition'];
        $products->active = $dados['active'];

        if($file = $request->file('img_product')) {
            $name = $file->getClientOriginalName();
            if($file->move('img/produtos', $name)) {
                $products->img_product = $name;
                
            };
        };
        
        $products->save();

        return redirect('/meus-produtos');
    }     

    public function destroy($id) {
        $products = \App\Produto::find($id);
        $products->delete();

        return back();
    }

    public function search(Request $request) {
        
        if($request->post('busca')==false) {
            return view('busca');
        }

        $produtos = Produto::where('name', 'like', '%'.$request->post('busca').'%')
        ->orWhere('description', 'like', '%'.$request->post('busca').'%')
        ->orWhere('composition', 'like', '%'.$request->post('busca').'%')->get();
        $lojas = Loja::where('name_store', 'like', '%'.$request->post('busca').'%')->get();
        return view('busca', compact('produtos','lojas'));


        // $buscar = $request->post('busca');
        // $products = Products::table('products')->where('name', 'LIKE', '%' . $buscar . '%')->paginate(10);
        // return view('index', ['products' => $products]);
    }
}