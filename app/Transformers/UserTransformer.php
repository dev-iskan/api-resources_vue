<?php

namespace App\Transformers;

class UserTransformer extends \League\Fractal\TransformerAbstract {
    public function transform (\App\User $user) {
        return [
            'name' => $user->name,
            'avatar'=>$user->avatar()
        ];
    }
}