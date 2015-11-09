# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/main

RailsAngularApp = angular.module('RailsAngularApp', ['ui.router'])

RailsAngularApp.config(['$urlRouterProvider', '$stateProvider', '$controllerProvider', ($urlRouterProvider, $stateProvider, $controllerProvider) ->

# Default route
  $urlRouterProvider.otherwise("/")

  $stateProvider
    .state('stateMainIndex', {
      url: "/",
      templateUrl: '../assets/main/index.html',
      controller: 'MainCtrl'
    })
    .state('stateMainAbout', {
      url: "/about",
      templateUrl: '../assets/main/index.html',
      controller: 'AboutCtrl'
    })

  $controllerProvider.allowGlobals()
])
