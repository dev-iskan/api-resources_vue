<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\Resource;

class ArticleResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
//        return parent::toArray($request);
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'body'=>$this->body
        ];
    }

    // We can use function with() which will bring some extra data with resource
    public function with($request){
        return [
          'version'=>'1.0.0',
          'author_url'=>url('http://google.com')
        ];
    }
}
