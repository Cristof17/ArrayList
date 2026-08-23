
/*
 * ArrayListPosition.c
 *
 *  Created on: 28 dec. 2025
 *      Author: AdministratorUser
 */

#ifndef _WIN95
#include <ArrayList/ArrayListPosition.h>
#elif defined _WIN95
#include <ArrayList\ArrayListPosition.h>
#endif
#include <defs.h>
#include <types.h>

struct ArrayListPosition ArrayListPositionPerformConstruct(struct ArrayListPosition place)
{
	struct ArrayListPosition position = { FIRST };
	return position;
}
struct ArrayListPosition ArrayListPositionPerformInit(struct ArrayListPosition ListPosition)
{
    struct ArrayListPosition position;
	position = ArrayListPositionPerformConstruct(ListPosition);
	// position.position = ListPosition;
	return position;
}
struct ArrayListPosition ArrayListPositionPerformCopy(struct ArrayListPosition ListPosition)
{
	struct ArrayListPosition copy;
	copy = ArrayListPositionPerformConstruct(ListPosition);
//	copy = ArrayListPositionPeoformInit(Position.position);
	copy = ArrayListPositionPerformInit(ListPosition);
	return copy;
}
HRESULT ArrayListPositionPerformDelete(struct ArrayListPosition Position)
{
	HRESULT result = { HRESULT_SUCCESS };
	return result;
}
HRESULT ArrayListPositionPerformRuin(struct ArrayListPosition Position)
{
	HRESULT result = { HRESULT_SUCCESS };
	return result;
}
