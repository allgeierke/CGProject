#version 330
out vec3 pixelFarbe; //Name beliebig

bool istImKreis(int mittelpunkt) {
    vec2 m;
    m.x = mittelpunkt;
    m.y = mittelpunkt;
        if(distance(m.xy, gl_FragCoord.xy) < 30) {
            return true;
        } else {
            return false;
        }
}

void createViereck(int pixelgroesse, int mittelpunkt, float r, float g, float b) {
    vec2 m;
    m.x = mittelpunkt;
    m.y = mittelpunkt;
    if(distance(m.x, gl_FragCoord.x) < pixelgroesse && distance(m.y, gl_FragCoord.y) < pixelgroesse) {
        pixelFarbe = vec3(r,g,b);
    }
}
void main() {
    //Hintergrund
    pixelFarbe = vec3(0.5, 0.75, 0.0);

    //Viereck an der Achse
    if (gl_FragCoord.x < 200 && gl_FragCoord.y < 200) {
        pixelFarbe = vec3(0.0, 0.5, 0.5);
    }
    //Viereck unschön
    if (gl_FragCoord.x < 400 && gl_FragCoord.x > 100 && gl_FragCoord.y < 400 && gl_FragCoord.y > 100) {
        pixelFarbe = vec3(0.75, 0.5, 0.5);
    }
    //Viereck via Methode = createViereck(größe, mitte, r, g, b);
    createViereck(40, 600, 0.1, 0.4, 0.5);

    //Kreis mit Mittelpunkt am Pixel x=300 y=300
    if(istImKreis(300)) {
        pixelFarbe = vec3(0.75, 0.0, 0.1);
    }
    //Kreis mit Mittelpunkt am Pixel x=400 y=400
    if(istImKreis(400)) {
        pixelFarbe = vec3(0.1, 0.1, 0.9);
    }


}
