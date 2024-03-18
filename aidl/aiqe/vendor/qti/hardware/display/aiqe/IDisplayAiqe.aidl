/*
 * Changes from Qualcomm Innovation Center, Inc. are provided under the following license:
 * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

 package vendor.qti.hardware.display.aiqe;

 @VintfStability
interface IDisplayAiqe {
    /**
     * Set the active SSRC mode for the specified display.
     * The SSRC feature must be active for this to have an effect
     *
     * @param dispId ID of the display to target.
     * @param mode_name Name of the SSRC mode to set.
     * @return OK on success or error if any parameters are invalid.
     */
    void setSsrcMode(in int disp_id, in String mode_name);
    /**
     * Enable COPR feature for the specified display.
     *
     * @param dispId ID of the display to target.
     * @param enable enable/disable COPR feature
     * @return OK on success or error if any parameters are invalid.
     */
    void enableCopr(in int disp_id, in boolean enable);
    /**
     * Query the COPR statistics for the specified display.
     * COPR feature must be active for this to work
     *
     * @param dispId ID of the display to target.
     * @return vector of COPR statistic data
     */
    int[] getCoprStats(in int disp_id);
}
