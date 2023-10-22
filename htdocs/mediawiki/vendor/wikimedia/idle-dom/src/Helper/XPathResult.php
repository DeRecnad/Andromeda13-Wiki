<?php

// AUTOMATICALLY GENERATED.  DO NOT EDIT.
// Use `composer build` to regenerate.

namespace Wikimedia\IDLeDOM\Helper;

trait XPathResult {

	// Underscore is used to avoid conflicts with DOM-reserved names
	// phpcs:disable PSR2.Methods.MethodDeclaration.Underscore
	// phpcs:disable MediaWiki.NamingConventions.LowerCamelFunctionsName.FunctionName

	/**
	 * Handle an attempt to get a non-existing property on this
	 * object.  The default implementation raises an exception
	 * but the implementor can choose a different behavior:
	 * return null (like JavaScript), dynamically create the
	 * property, etc.
	 * @param string $prop the name of the property requested
	 * @return mixed
	 */
	protected function _getMissingProp( string $prop ) {
		$trace = debug_backtrace();
		while (
			count( $trace ) > 0 &&
			$trace[0]['function'] !== "__get"
		) {
			array_shift( $trace );
		}
		trigger_error(
			'Undefined property' .
			' via ' . ( $trace[0]['function'] ?? '' ) . '(): ' . $prop .
			' in ' . ( $trace[0]['file'] ?? '' ) .
			' on line ' . ( $trace[0]['line'] ?? '' ),
			E_USER_NOTICE
		);
		return null;
	}

	/**
	 * Handle an attempt to set a non-existing property on this
	 * object.  The default implementation raises an exception
	 * but the implementor can choose a different behavior:
	 * ignore the operation (like JavaScript), dynamically create
	 * the property, etc.
	 * @param string $prop the name of the property requested
	 * @param mixed $value the value to set
	 */
	protected function _setMissingProp( string $prop, $value ): void {
		$trace = debug_backtrace();
		while (
			count( $trace ) > 0 &&
			$trace[0]['function'] !== "__set"
		) {
			array_shift( $trace );
		}
		trigger_error(
			'Undefined property' .
			' via ' . ( $trace[0]['function'] ?? '' ) . '(): ' . $prop .
			' in ' . ( $trace[0]['file'] ?? '' ) .
			' on line ' . ( $trace[0]['line'] ?? '' ),
			E_USER_NOTICE
		);
	}

	// phpcs:enable

	/**
	 * @param string $name
	 * @return mixed
	 */
	public function __get( string $name ) {
		'@phan-var \Wikimedia\IDLeDOM\XPathResult $this';
		// @var \Wikimedia\IDLeDOM\XPathResult $this
		switch ( $name ) {
			case "resultType":
				return $this->getResultType();
			case "numberValue":
				return $this->getNumberValue();
			case "stringValue":
				return $this->getStringValue();
			case "booleanValue":
				return $this->getBooleanValue();
			case "singleNodeValue":
				return $this->getSingleNodeValue();
			case "invalidIteratorState":
				return $this->getInvalidIteratorState();
			case "snapshotLength":
				return $this->getSnapshotLength();
			default:
				break;
		}
		'@phan-var \Wikimedia\IDLeDOM\Helper\XPathResult $this';
		// @var \Wikimedia\IDLeDOM\Helper\XPathResult $this
		return $this->_getMissingProp( $name );
	}

	/**
	 * @param string $name
	 * @return bool
	 */
	public function __isset( string $name ): bool {
		'@phan-var \Wikimedia\IDLeDOM\XPathResult $this';
		// @var \Wikimedia\IDLeDOM\XPathResult $this
		switch ( $name ) {
			case "resultType":
				return true;
			case "numberValue":
				return true;
			case "stringValue":
				return true;
			case "booleanValue":
				return true;
			case "singleNodeValue":
				return $this->getSingleNodeValue() !== null;
			case "invalidIteratorState":
				return true;
			case "snapshotLength":
				return true;
			default:
				break;
		}
		return false;
	}

}
