varying vec3 vNormal;
varying vec3 vPosition;

void main() {
    float intensity = dot(normalize(vNormal), vec3(0.0, 0.0, 1.0));
    vec3 color = mix(vec3(0.0), vec3(1.0), intensity);
    gl_FragColor = vec4(color, 1.0);
}