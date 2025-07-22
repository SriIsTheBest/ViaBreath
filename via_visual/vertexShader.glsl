uniform float uTime;
varying vec3 vNormal;
varying vec3 vPosition;

float noise(vec3 p) {
    return sin(p.x * 1.5 + uTime) * 0.1 + sin(p.y * 2.0 + uTime) * 0.1;
}

void main() {
  vec3 pos = position;

  // Smooth, breathing-style displacement
  float displacement = snoise(pos * 0.01 + vec3(uTime * 0.000005)) * 0.08;
  pos += normal * displacement;

  gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
  gl_PointSize = 1.0;
}
