/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package code;

import java.io.File;

/**
 *
 * @author STW
 */
public class Principal {
    public static void main(String[] args) {
        String ruta = "C:/Users/STW/Documents/NetBeansProjects/AnalizadorLexico/src/code/Lexer.flex";
        generateLexer(ruta);
    }
    public static void generateLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
