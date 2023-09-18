/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vasferre <vasferre@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/14 14:55:31 by vasco             #+#    #+#             */
/*   Updated: 2022/11/04 17:57:19 by vasferre         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isdigit(int b)
{
	if (b >= '0' && b <= '9')
		return (1);
	return (0);
}
