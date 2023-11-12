open class Builder {

    public init() { }

    open func build() -> CadePlatform {
        fatalError("build function needs to be overridden")
    }
}