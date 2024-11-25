# StockVue Analytics

## Project Overview
StockVue Analytics is a comprehensive macOS stock market tracking application that provides real-time market insights, interactive visualizations, and financial news integration.

## Key Features
- Real-time stock price tracking
- Interactive financial charts
- Multiple API integrations
- Custom routing engine
- Live market news updates

## Technical Architecture
- **UI Framework**: SwiftUI
- **Reactive Programming**: Combine Framework
- **Networking**: URLSession
- **Data Visualization**: Swift Charts
- **Routing**: Custom lightweight routing engine

## Project Structure
```
StockVueAnalytics/
├── Models/
│   ├── Stock.swift
│   └── StockPrice.swift
├── Views/
│   ├── StockDetailView.swift
│   └── MarketDashboardView.swift
├── Services/
│   ├── StockAPIService.swift
│   └── NewsAPIService.swift
├── ViewModels/
│   └── StockViewModel.swift
└── Utilities/
    ├── Router.swift
    └── APIClient.swift
```

## Core Functionalities
- Fetch real-time stock prices
- Display interactive price charts
- Aggregate financial news
- Portfolio tracking
- Custom stock watchlists

## Supported APIs
- Alpha Vantage
- Yahoo Finance
- IEX Cloud
- Financial Modeling Prep

## Development Requirements
- Xcode 15+
- macOS 14 (Sonoma)
- Swift 5.9+

## Installation
1. Clone the repository
2. Open `StockVueAnalytics.xcodeproj`
3. Add API keys in `Config.swift`
4. Build and run the project

## Contributing
Please read `CONTRIBUTING.md` for details on our code of conduct and the process for submitting pull requests.
