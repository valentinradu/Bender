//
//  TextureConversionTest.swift
//  Bender
//
//  Created by Diego Ernst on 5/25/17.
//
//

import MetalBender

class TextureConversionTest: BenderTest {

    override func run(completion: @escaping () -> ()) {
        TestData.textures.forEach { test(texture: $0) }
        completion()
    }

    func test(texture: Texture) {
        let metalTexture = texture.metalTexture(with: Device.shared)
        assert(Texture(metalTexture: metalTexture, size: texture.size).isEqual(to: texture))
    }

}
