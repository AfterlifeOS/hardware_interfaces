/*
 * Copyright (C) 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.hardware.power.stats;

import android.hardware.power.stats.EnergyConsumerType;

@VintfStability
parcelable EnergyConsumer {
    /**
     * Unique ID of this EnergyConsumer
     */
    int id;

    /**
     * For a group of EnergyConsumers of the same logical type, sorting by ordinal should
     * be give their physical order. No other meaning is carried by it.
     */
    int ordinal;

    /* Type of this EnergyConsumer */
    EnergyConsumerType type;

    /**
     * Unique name of this EnergyConsumer. Vendor/device specific. Opaque to framework
     */
    @utf8InCpp String name;
}