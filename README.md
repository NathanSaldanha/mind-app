# Projeto Mind Tag - README

[![Build Status](https://travis-ci.org/armando-couto/bank-accounting.svg?branch=master)](https://mind-app-util.herokuapp.com/)

### O Mind Tag é uma ferramenta de brainstorming (tempestade de ideias); e no auxílio da gestão estratégica de uma empresa ou negócio. 

## Requisito
    Rails 6.0.3
    Ruby 2.7.2
    Postegresql

## Setup
    rvm install 2.7.2   
    rvm use 2.7.2
    gem install bundler
    bundle install
    rake db:create 
    rake db:migrate 
    rake db:seed
    rails server

## Banco de dados - BD
    Baixe e instale o PGAdmin: https://www.pgadmin.org/download/
    Acesse a interface do postgres: http://127.0.0.1:51669/browser/

### Soluçõe utilizadas
    Devise: Solução de autenticação, recuperação de senha e alteração de senha e email.
    Flexível para Rails.

    Bootstrap: Framework web para desenvolvimento de componentes de interface e front-end
    
    Redcarpet: Um analisador de Markdown seguro e recarregado.

    Rspec-rails: rspec-rails traz a estrutura de teste RSpec para Ruby on Rails como uma 
    alternativa para sua estrutura de teste padrão, Minitest.

    Shoulda-matchers: Fornece uma linha compatível com RSpec e Minitest para testar a
    funcionalidade Rails comum que, se escrita à mão, seria muito mais longa, mais complexa
    e sujeita a erros

    Heroku: É uma plataforma nuvem que faz deploy de várias aplicações back-end seja para
    hospedagem, testes em produção ou escalar as suas aplicações.
