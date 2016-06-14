//
//  AnimatedTransitioning.swift
//  OptionalityChangesTest
//
//  Created by Paul Rehkugler on 6/14/16.
//  Copyright © 2016 Tumblr. All rights reserved.
//

import UIKit

final class AnimatedTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
    // MARK: - UIViewControllerAnimatedTransitioning

    func transitionDuration(_ transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return TimeInterval(0.5)
    }

    func animateTransition(_ transitionContext: UIViewControllerContextTransitioning) {

        /*
         This used to be optional in the iOS 9 SDK. Is this safe to be non-optional in the iOS 10 SDK
         for apps that target iOS 9 too?
         */
        let riskyContainerView = transitionContext.containerView()
        _ = riskyContainerView

        /*
         Is this a safer way to do it?
         */
        guard let saferContainerView = OptionalityChangeWrapper(value: transitionContext.containerView()).value else {
            return
        }
        _ = saferContainerView
    }
}
