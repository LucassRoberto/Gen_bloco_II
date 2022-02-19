package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/exercicio")
public class HelloController {
	
	@GetMapping
	public String atividade() {
		return "Habilidade e mentalidade: Orientação ao detalhe e persistência." +
				" Objetivos de aprendizagem: Aprofundar os estudos em Spring.";
	}


}
