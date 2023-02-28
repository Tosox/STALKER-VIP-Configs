function normal    (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4glass","particle_hard")    -- particle_alphaonly
      : sorting  (3, true)
      : blend    (true,blend.srccolor,blend.invsrcalpha)
      : aref     (true,0)
      : zb     (true,false)
      : fog    (false)
      : distort   (true)
	shader: dx10texture ("s_base", t_base)
	shader: dx10sampler ("smp_base")
end

function l_special  (shader, t_base, t_second, t_detail)
  shader:begin  ("model_distort4bag","particle_distort")
      : sorting   (3, true)
      : blend    (true,blend.srcalpha,blend.one)
      : zb        (true,false)
      : fog       (false)
      : distort   (true)
	shader: dx10texture ("s_base", t_base)
	--shader: dx10texture ("s_distort", "tgzitems\\trans")
	shader: dx10sampler ("smp_box")

end

--blend.srccolor, 