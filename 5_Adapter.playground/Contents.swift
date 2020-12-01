import Foundation

class YandexAds {
	func showBanner() {
		print("Yandex show banner ads")
	}
	
	func showInterstitial() {
		print("Yandex show interstitial ads")
	}
}

class FacebookAds {
	func showBannerAd() {
		print("Facebook show banner ads")
	}
	
	func showInterstitialAd() {
		print("Facebook show interstitial ads")
	}
}

protocol AdvertisingProtocol: class {
	func showBanner()
	func showInterstitial()
}

class YandexAdsAdapter: AdvertisingProtocol {
	private let adapter = YandexAds()
	
	func showBanner() {
		adapter.showBanner()
	}
	
	func showInterstitial() {
		adapter.showInterstitial()
	}
	
}

class FacebookAdsAdapter: AdvertisingProtocol {
	private let adapter = FacebookAds()
	
	func showBanner() {
		adapter.showBannerAd()
	}
	
	func showInterstitial() {
		adapter.showInterstitialAd()
	}
}

class AdverisementAdapter: AdvertisingProtocol {
	private let adapter: AdvertisingProtocol
	
	init(adapter: AdvertisingProtocol) {
		self.adapter = adapter
	}
	
	func showBanner() {
		adapter.showBanner()
	}
	
	func showInterstitial() {
		adapter.showInterstitial()
	}
}
