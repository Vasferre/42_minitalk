/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unsigned.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vasferre <vasferre@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 16:25:54 by vasferre          #+#    #+#             */
/*   Updated: 2022/11/28 16:58:14 by vasferre         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_num_len(unsigned int num)
{
	int		len;

	len = 0;
	while (num != 0)
	{
		len++;
		num /= 10;
	}
	return (len);
}

char	*ft_uitoa(unsigned int n)
{
	char	*num;
	int		len;

	len = ft_num_len(n);
	num = (char *)malloc((len + 1) * sizeof(char));
	if (!num)
		return (NULL);
	num[len] = '\0';
	while (n != 0)
	{
		num[len - 1] = n % 10 + 48;
		n = n / 10;
		len--;
	}
	return (num);
}

int	ft_print_unsigned(unsigned int n)
{
	int		leng;
	char	*num;

	leng = 0;
	if (n == 0)
		leng += write (1, "0", 1);
	else
	{
		num = ft_uitoa (n);
		leng += ft_prtstr (num);
		free (num);
	}
	return (leng);
}
