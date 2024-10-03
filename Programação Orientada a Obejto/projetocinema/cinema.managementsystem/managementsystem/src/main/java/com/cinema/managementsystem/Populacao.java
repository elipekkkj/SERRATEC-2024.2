package com.cinema.managementsystem;

import static com.cinema.managementsystem.ConsoleColors.ANSI_BLACK;
import static com.cinema.managementsystem.ConsoleColors.ANSI_LIGHT_GRAY;
import static com.cinema.managementsystem.ConsoleColors.ANSI_RESET;

import com.cinema.managementsystem.Filme.Categoria;

public class Populacao {


    public static void popularClienteGerente(){
        Gerente g1 = new Gerente("Felipe Gonçalves", "111.222.333-44");
        g1.setLogin("felipe.gt@gmail.com");
        g1.setSenha("felipe1234");
        g1.setEmail("felipe.gt@gmail.com");
        g1.setTelefone("12345-6789");
        Usuario.usuarios.add(g1);

        Gerente g2 = new Gerente("Eduardo Felipe", "555.666.777-88");
        g2.setLogin("edufilipe.gt@gmail.com");
        g2.setSenha("edu2245");
        g2.setEmail("edufilipe.gt@gmail.com");
        g2.setTelefone("98765-4321");
        Usuario.usuarios.add(g2);

        Cliente c1 = new Cliente("Larissa", "123.456.789-00");
        c1.setLogin("larissanunciacao.ct@gmail.com");
        c1.setSenha("lari2027");
        c1.setEmail("larissanunciacao.ct@gmail.com");
        c1.setTelefone("12345-6789");
        Usuario.usuarios.add(c1);

        Cliente c2 = new Cliente("Thais Cardoso", "987.654.321-00");
        c2.setLogin("thaiscdo.ct@gmail.com");
        c2.setSenha("thais27");
        c2.setEmail("thaiscdo.ct@gmail.com");
        c2.setTelefone("98765-4321");
        Usuario.usuarios.add(c2);
    }

    
    public static void popularSessoes(){
        Sessao sessao1 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao1);
        Sessao sessao2 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao2);
        Sessao sessao3 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao3);
        Sessao sessao4 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao4);
        Sessao sessao5 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao5);
        Sessao sessao6 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao6);
        Sessao sessao7 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao7);
        Sessao sessao8 = new Sessao(7, 9);
        Sessao.sessoes.add(sessao8);
    }
}
