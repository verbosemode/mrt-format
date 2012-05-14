(*
 * Copyright (c) 2012 Richard Mortier <mort@cantab.net>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

type tc = IP4 | IP6
val int_to_tc: int -> tc
val tc_to_string: tc -> string

val sizeof_ip4: int
val get_ip4_ip: Cstruct.buf -> Cstruct.uint32

val sizeof_ip6: int
val get_ip6_hi: Cstruct.buf -> Cstruct.uint64
val get_ip6_lo: Cstruct.buf -> Cstruct.uint64

type ip = IPv4 of int32 | IPv6 of int64 * int64
val ip_to_string: ip -> string

type prefix = ip * Cstruct.uint8
val prefix_to_string: prefix -> string