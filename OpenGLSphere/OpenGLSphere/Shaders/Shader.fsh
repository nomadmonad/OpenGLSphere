//
//  Shader.fsh
//  OpenGLSphere
//
//  Created by tyamamo on 2014/05/15.
//  Copyright (c) 2014年 RICOH IT Solutions, Inc. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
