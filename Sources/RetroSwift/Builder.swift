open class Builder {

    public init() { }

    open func build() -> RetroPlatform {
        fatalError("build function needs to be overridden")
    }
}
