project_name: "my_coe_demo"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
remote_dependency: image_carousel {
  url: "https://github.com/looker-open-source/viz-carousel-marketplace.git"
  ref: "master"
}
