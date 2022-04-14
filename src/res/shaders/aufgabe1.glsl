#version 330
out vec3 pixelFarbe; //Name beliebig

bool istImKreis() {
    vec2 m;
    

    if(distance(m.x,gl_FragCoord.x) < 30 && distance(m.y,gl_FragCoord.y) < 30) {
        return true;
    } else {
        return false;
    }
}
void main() {
    //Hintergrund
    pixelFarbe = vec3(0.5, 0.75, 0.0);

    //Viereck an der Achse
    if (gl_FragCoord.x < 200 && gl_FragCoord.y < 200) {
        pixelFarbe = vec3(0.0, 0.5, 0.5);
    }

    //Kreis
    if(istImKreis) {
        pixelFarbe = vec3(0.75, 0.5, 0.5);
    }

}