// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings for `src/ffi_rust_plugin.h`
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class FfiRustPluginBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FfiRustPluginBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FfiRustPluginBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<NBody> init(
    int particles_amount,
    double canvas_width,
    double canvas_height,
    double min_mass,
    double max_mass,
    ffi.Pointer<NBody> previous_ptr,
  ) {
    return _init(
      particles_amount,
      canvas_width,
      canvas_height,
      min_mass,
      max_mass,
      previous_ptr,
    );
  }

  late final _initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<NBody> Function(ffi.Int, ffi.Float, ffi.Float, ffi.Float,
              ffi.Float, ffi.Pointer<NBody>)>>('init');
  late final _init = _initPtr.asFunction<
      ffi.Pointer<NBody> Function(
          int, double, double, double, double, ffi.Pointer<NBody>)>();

  ffi.Pointer<ParticleRust> update_particles(
    ffi.Pointer<NBody> n_body_ptr,
  ) {
    return _update_particles(
      n_body_ptr,
    );
  }

  late final _update_particlesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ParticleRust> Function(
              ffi.Pointer<NBody>)>>('update_particles');
  late final _update_particles = _update_particlesPtr
      .asFunction<ffi.Pointer<ParticleRust> Function(ffi.Pointer<NBody>)>();
}

base class NBody extends ffi.Opaque {}

base class ParticleRust extends ffi.Struct {
  @ffi.Float()
  external double mass;

  @ffi.Float()
  external double pos_x;

  @ffi.Float()
  external double pos_y;

  @ffi.Float()
  external double vel_x;

  @ffi.Float()
  external double vel_y;

  @ffi.Float()
  external double force;
}
