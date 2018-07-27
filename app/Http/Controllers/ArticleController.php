<?php

namespace App\Http\Controllers;

use App\Article;
use App\Http\Resources\ArticleResource;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Get articles
        $articles=Article::paginate(15);
        //Return articles resources
        return ArticleResource::collection($articles);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $article = new Article;
        $article->title = $request->input('title');
        $article->body = $request->input('body');

        if($article->save()){
            return new ArticleResource($article);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  Article $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        //Get single article
        return new ArticleResource($article);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  Article $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  Article $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        //
        $article->title = $request->input('title');
        $article->body = $request->input('body');

        if($article->save()){
            return new ArticleResource($article);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  Article $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        //Delete article
        if($article->delete()){
            return new ArticleResource($article);
        }
    }
}
