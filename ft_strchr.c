/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: challeau <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/05 16:04:09 by challeau          #+#    #+#             */
/*   Updated: 2019/11/05 16:04:10 by challeau         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	char a;

	a = (char)c;
	while (*s != '\0')
	{
		if (*s == a)
			return ((char *)s);
		s++;
	}
	return (NULL);
}
