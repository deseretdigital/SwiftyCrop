import CoreGraphics

/// `SwiftyCropConfiguration` is a struct that defines the configuration for cropping behavior.
public struct SwiftyCropConfiguration {
    public let maxMagnificationScale: CGFloat
    public let maskRadius: CGFloat
    public let cropImageCircular: Bool
    public let rotation: Rotation
    public let zoomSensitivity: CGFloat
    public let rectAspectRatio: CGFloat

    /// Creates a new instance of `SwiftyCropConfiguration`.
    ///
    /// - Parameters:
    ///   - maxMagnificationScale: The maximum scale factor that the image can be magnified while cropping.
    ///                            Defaults to `4.0`.
    ///   - maskRadius: The radius of the mask used for cropping.
    ///                            Defaults to `130`.
    ///   - cropImageCircular: Option to enable circular crop.
    ///                            Defaults to `false`.
    ///   - rotation: Controls how the image can be rotated. Options are `.gesture`, `.buttons`, and `.none`.
    ///                            Defaults to `.none`.
    ///   - zoomSensitivity: Sensitivity when zooming. Default is `1.0`. Decrease to increase sensitivity.
    ///
    ///   - rectAspectRatio: The aspect ratio to use when a `.rectangle` mask shape is used. Defaults to `4:3`.
    public init(
        maxMagnificationScale: CGFloat = 4.0,
        maskRadius: CGFloat = 130,
        cropImageCircular: Bool = false,
        rotation: Rotation = .none,
        zoomSensitivity: CGFloat = 1,
        rectAspectRatio: CGFloat = 4/3
    ) {
        self.maxMagnificationScale = maxMagnificationScale
        self.maskRadius = maskRadius
        self.cropImageCircular = cropImageCircular
        self.rotation = rotation
        self.zoomSensitivity = zoomSensitivity
        self.rectAspectRatio = rectAspectRatio
    }
}
