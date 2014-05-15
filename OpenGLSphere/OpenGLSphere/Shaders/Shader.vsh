//
//  Shader.vsh
//  OpenGLSphere
//
//  Created by tyamamo on 2014/05/15.
//  Copyright (c) 2014年 RICOH IT Solutions, Inc. All rights reserved.
//

attribute vec4 position;
attribute vec3 normal;

varying lowp vec4 colorVarying;

uniform mat4 modelViewProjectionMatrix;
uniform mat3 normalMatrix;

void main()
{
    vec3 eyeNormal = normalize(normalMatrix * normal);
    // the light is hidden for this particular cube
    vec3 lightPosition = vec3(0.0, 0.0, 1.0);
    vec4 diffuseColor = vec4(0.4, 0.4, 1.0, 1.0);
    
    float nDotVP = max(0.0, dot(eyeNormal, normalize(lightPosition)));
                 
    colorVarying = diffuseColor * nDotVP;
    
    // gl_Position is predefined object that carries the position of the current vertex.
    gl_Position = modelViewProjectionMatrix * position;
}
