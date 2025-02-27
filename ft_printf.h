/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nanasser <nanasser@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/24 18:19:42 by nanasser          #+#    #+#             */
/*   Updated: 2025/02/04 18:43:03 by nanasser         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include "libft/libft.h"

int	ft_printf(const char *format, ...);
int	ft_putstr(char *str);
int	ft_printnum(int n);
int	ft_printpercent(void);
int	ft_uint(unsigned int n);
int	ft_ptr(uintptr_t ptr);
int	ft_printhex(unsigned int n, const char format);

#endif