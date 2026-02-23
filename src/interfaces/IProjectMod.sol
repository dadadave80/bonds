// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice The impact score of a project.
struct ImpactScore {
    uint8 creditQuality; // 0 - 100 (financial risk)
    uint8 greenImpact; // 0 - 100 (environmental integrity)
}

/// @notice The details of a project.
struct ProjectDetails {
    /// @notice The impact score of the project.
    ImpactScore impactScore;
    /// @notice The ID of the project.
    uint256 projectId;
    /// @notice The URI of the project.
    string projectURI;
}

interface IProjectMod {
    /// @notice Creates a new project.
    /// @param projectURI The URI of the project.
    /// @return projectId The ID of the created project.
    function createProject(string calldata projectURI) external returns (uint256 projectId);

    /// @notice Updates the details of existing projects.
    /// @param projectDetails The details of the projects to update.
    function updateProjects(ProjectDetails[] calldata projectDetails) external;
}
