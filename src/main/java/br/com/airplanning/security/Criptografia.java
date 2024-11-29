package br.com.airplanning.security;

import org.apache.commons.codec.binary.Hex;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Criptografia {

    // Método para converter uma senha em um Hash MD5
    public static String converterParaMD5(String senha) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(senha.getBytes());
        byte[] digest = md.digest();
        return new String(Hex.encodeHex(digest));
    }

    // Método utilitário para gerar e exibir a senha criptografada (para uso administrativo)
    public static void gerarSenhaCriptografadaAdmin(String senha) {
        try {
            String senhaCriptografada = converterParaMD5(senha);
            System.out.println("Senha Criptografada para o Admin: " + senhaCriptografada);
        } catch (NoSuchAlgorithmException e) {
            System.err.println("Erro ao criptografar a senha: " + e.getMessage());
        }
    }

    // Teste direto (main) para gerar a senha criptografada do admin
    public static void main(String[] args) {
        String senhaAdmin = "admin"; // Alterar aqui caso precise de outra senha
        gerarSenhaCriptografadaAdmin(senhaAdmin);
    }
}
