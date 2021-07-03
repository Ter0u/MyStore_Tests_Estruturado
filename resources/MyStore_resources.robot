*** Settings ***        
Library                         SeleniumLibrary

*** Variables ***
${browser}                    chrome
${url}                        http://automationpractice.com/index.php

*** Keywords ***
Abrir navegador
    Open Browser              ${url}          ${browser}
    Maximize Browser Window

Fechar navegador
    Close Browser