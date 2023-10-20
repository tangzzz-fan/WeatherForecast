//
//  AppFlowCoordinator.swift
//  WeatherForecast
//
//  Created by 小苹果 on 2023/10/19.
//

import UIKit
import WForecastComponents

final class AppFlowCoordinator {

    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        registerDependencies()
    }

    func start() {
        let viewModel = ContainerViewModel()
        let viewController = ContainerViewController(viewModel: viewModel)
        viewModel.start()
        navigationController.pushViewController(viewController, animated: false)
    }
    
    func registerDependencies() {
        let assembly = AppServicesAssembly()
        applyAssembly(assembly)
    }
}

