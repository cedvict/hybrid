module.exports = angular.module('wordpress-hybrid-client.posts').config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
    .state 'public.posts',
        url: "/posts"
        views:
            'content':
                templateUrl: require "./posts.html"
                controller: "WPHCPostsController as posts"
    .state 'public.search',
        url: "/search/:search"
        views:
            'content':
                templateUrl: require "./posts.html"
                controller: "WPHCPostsController as posts"

    $urlRouterProvider.otherwise('/public/posts') ;
