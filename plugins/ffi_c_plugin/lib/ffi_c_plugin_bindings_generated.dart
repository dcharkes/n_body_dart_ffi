// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `src/ffi_c_plugin.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class FfiCPluginBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FfiCPluginBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FfiCPluginBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void init_c(
    int particles_amount,
    double canvas_width,
    double canvas_height,
    double min_mass,
    double max_mass,
  ) {
    return _init_c(
      particles_amount,
      canvas_width,
      canvas_height,
      min_mass,
      max_mass,
    );
  }

  late final _init_cPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int, ffi.Double, ffi.Double, ffi.Double,
              ffi.Double)>>('init_c');
  late final _init_c = _init_cPtr
      .asFunction<void Function(int, double, double, double, double)>();

  ffi.Pointer<Particle> update_particles_c() {
    return _update_particles_c();
  }

  late final _update_particles_cPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<Particle> Function()>>(
          'update_particles_c');
  late final _update_particles_c =
      _update_particles_cPtr.asFunction<ffi.Pointer<Particle> Function()>();
}

final class Particle extends ffi.Struct {
  @ffi.Double()
  external double mass;

  @ffi.Double()
  external double pos_x;

  @ffi.Double()
  external double pos_y;

  @ffi.Double()
  external double vel_x;

  @ffi.Double()
  external double vel_y;

  @ffi.Double()
  external double force;
}
