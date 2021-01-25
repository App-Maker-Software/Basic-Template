//
//  _AMTemplater.swift
//  BasicTemplate
//
//  Created by Joseph Hinkle on 1/25/21.
//

func _amTemplateValue<T>(_ key: String, default defaultValue: T) -> T {
    return defaultValue
}

func _amTemplateClosure<T, U>(_ key: String, default defaultValue: T, templater: (T) -> U) -> U {
    return templater(defaultValue)
}

func _amTemplateOptionalValue<T>(_ key: String, default defaultValue: T) -> T {
    return defaultValue
}

func _amTemplateOptionalClosure<T, U>(_ key: String, default defaultValue: T, templater: (T) -> U) -> U {
    return templater(defaultValue)
}
