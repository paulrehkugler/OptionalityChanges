### Optionality Changes

Some properties changed from `nullable` to `nonnull` in `UIKit` from iOS 9 to iOS 10. Because there are no `@available` guards for optionality changes, how should these be handled? Are they safe to call for apps that target iOS 9, or does that implicitly unwrap an Optional?

One such property that changed its nullability attributes is `UIViewControllerContextTransitioning`, which changed the return value of `public func containerView()` from `UIView?` to `UIView`.
