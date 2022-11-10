/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: murphy <murphy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/17 17:27:00 by styes             #+#    #+#             */
/*   Updated: 2022/11/10 17:45:47 by murphy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Mandatory/libft.h"

int	ft_lstsize(t_list *lst)
{
	int	i;

	i = 0;
	if (!lst)
		return (0);
	while (lst)
	{
		lst = lst -> next;
		i++;
	}
	return (i);
}
/*
int	main()
{
	t_list	*list;
	int	i;

	list = NULL;
	i = 0;
	while (i < 3)
	{
		ft_lstadd_back(&list, ft_lstnew("a"));
		i++;
	}
	printf ("%d\n", ft_lstsize(list));
}*/
