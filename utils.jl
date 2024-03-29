using Dates

function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_last_posts(m::Vector{String})
  @assert length(m) == 1 "only one argument allowed for recent posts (the number of recent posts to pull)"
  n = parse(Int64, m[1])
  list = readdir("posts")
  filter!(f -> endswith(f, ".md") && f != "index.md" , list)
  markdown = ""
  posts = []
  df = DateFormat("dd/mm/yyyy")
  for (k, post) in enumerate(list)
      fi = "posts/" * splitext(post)[1]
      title = pagevar(fi, :title)
      datestr = pagevar(fi, :date)
      date = Date(pagevar(fi, :date), df)
      push!(posts, (title=title, link=fi, date=date))
  end

  # pull all posts if n <= 0
  n = n >= 0 ? n : length(posts)+1

  for ele in sort(posts, by=x->x.date, rev=true)[1:min(length(posts), n)]
    markdown *= "* [($(ele.date)) $(ele.title)](../$(ele.link))\n"
  end

  return fd2html(markdown, internal=true)
end
