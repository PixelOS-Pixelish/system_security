/*
 * Copyright 2021, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.security.metrics;

import android.security.metrics.Algorithm;
import android.security.metrics.EcCurve;
import android.security.metrics.KeyOrigin;

/**
 * Atom that encapsulates a set of general information in key creation events.
 * @hide
 */
@RustDerive(Clone=true, Eq=true, PartialEq=true, Ord=true, PartialOrd=true, Hash=true)
parcelable KeyCreationWithGeneralInfo {
    Algorithm algorithm;
    int key_size;
    EcCurve ec_curve;
    KeyOrigin key_origin;
    int error_code;
    boolean attestation_requested = false;
}