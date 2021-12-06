/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ahel-mou <ahel-mou@student-1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/25 14:58:10 by ahel-mou          #+#    #+#             */
/*   Updated: 2021/11/28 14:52:18 by ahel-mou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

//# include <stdio.h>
//# include <string.h>

int			ft_printf(const char *cara, ...);
int			var_type(char cara, va_list l_o_arg);
int			base_num_len(size_t num, size_t base);
int			ft_putnbr_base(int num, char *cara);
int			ft_putnbr_base_unsigned(unsigned int num, char *base);
int			ft_putchar(char cara);
int			ft_putstr(char *cara);
int			ft_pt_address(void *add);
size_t		ft_strlen(char *cara);

#endif