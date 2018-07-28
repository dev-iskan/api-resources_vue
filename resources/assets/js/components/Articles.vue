<template>
    <div>
        <h2>Articles</h2>
        <form @submit.prevent="handleArticle" class="mb-3">
            <div class="form.group">
                <input type="text" class="form-control" placeholder="Title" v-model="article.title">
            </div>
            <div class="form.group">
                <textarea class="form-control" placeholder="Body" v-model="article.body">
                </textarea>
            </div>
            <button type="submit" class="btn btn-light btn-block">Save</button>
        </form>
        <nav>
            <ul class="pagination">
                <li v-bind:class="[{disabled: !pagination.previous_page_url}]" class="page-item"><a class="page-link"
                                                                                                    href="#"
                                                                                                    @click="fetchArticles(pagination.prev_page_url)">Previous</a>
                </li>

                <li class="page-item disabled"><a class="page-link text-dark" href="#">Page {{pagination.current_page}}
                    of {{pagination.last_page}}</a></li>

                <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link"
                                                                                                href="#"
                                                                                                @click="fetchArticles(pagination.next_page_url)">Next</a>
                </li>
            </ul>
        </nav>
        <div class="card card-body mb-2" v-for="article in articles" :key="article.id">
            <h3>{{article.title}}</h3>
            <p>{{article.body}}</p>
            <hr>
            <button @click="updateArticle(article)" class="btn btn-warning mb-2">Edit</button>
            <button @click="deleteArticle(article.id)" class="btn btn-danger">Delete</button>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                articles: [],
                article: {
                    id: '',
                    title: '',
                    body: ''
                },
                pagination: {},
                article_id: '',
                edit : false
            }
        },
        created() {
            this.fetchArticles();
        },
        methods: {
            fetchArticles(pageUrl) {
                let vm = this;
                pageUrl = pageUrl || 'api/articles';
                fetch(pageUrl)
                    .then(res => res.json())
                    .then(res => {
                        this.articles = res.data;
                        vm.makePagination(res.meta, res.links);
                    })
                    .catch(err => console.log(err));
            },

            makePagination(meta, links) {
                let pagination = {
                    current_page: meta.current_page,
                    last_page: meta.last_page,
                    next_page_url: links.next,
                    previous_page_url: links.prev
                };
                this.pagination = pagination;
            },

            handleArticle() {
                if(this.edit === false){
                fetch(`api/articles`, {
                    method: 'post',
                    body: JSON.stringify(this.article),
                    headers:{
                        'content-type': 'apllication/json'
                    }
                })
                    .then(res=>res.json())
                    .then(data=> {
                        this.article.title = '';
                        this.article.body = '';
                        this.fetchArticles();
                    })
                    .catch(err => console.log(err));
                }
                else {
                    fetch(`api/articles/${this.article_id}`, {
                        method: 'put',
                        body: JSON.stringify(this.article),
                        headers:{
                            'content-type': 'apllication/json'
                        }
                    })
                        .then(res=>res.json())
                        .then(data=> {
                            this.article.title = '';
                            this.article.body = '';
                            this.fetchArticles();
                        })
                        .catch(err => console.log(err));
                }
            },

            updateArticle(article){
                this.edit = true;
                this.article_id= article.id;
                this.article.article_id = article.id;
                this.article.title = article.title;
                this.article.body = article.body
            },

            deleteArticle(id) {
                if(confirm('Are you sure?')){
                    fetch(`api/articles/${id}`, {
                        method: 'delete'
                    })
                        .then(res=>res.json())
                        .then(data=>{
                            alert('Article Removed');
                            this.fetchArticles();
                        })
                        .catch(err => console.log(err));
                }
            }
        }
    }
</script>