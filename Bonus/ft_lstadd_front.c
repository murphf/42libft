/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: murphy <murphy@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/17 14:28:14 by styes             #+#    #+#             */
/*   Updated: 2022/11/10 17:45:06 by murphy           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../Mandatory/libft.h"

//Adds the element ’new’ at the beginning of the list.
//lst is a ponter of a pointer: hold the address of the first node
void	ft_lstadd_front(t_list **lst, t_list *new)
{
	if (!lst || !new)
		return ;
	new -> next = *lst;
	*lst = new;
}
/*
static void	printf_list(t_list *head)
{
	printf("content of the list: ");
	while (head)
	{
		printf("|%s|", head->content);
		head = head->next;
	}
	printf("\n");
}
int	main()
{
	t_list *node;
	node = NULL;
	node = ft_lstnew("first");
	printf("size before: %d\n", ft_lstsize(node));
	printf_list(node);
	ft_lstadd_front(&node, ft_lstnew("pre-first"));
	printf("size after: %d\n", ft_lstsize(node));
	printf_list(node);
}
*/