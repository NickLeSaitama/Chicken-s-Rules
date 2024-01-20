if (entityParticuleCount > 0)
{
	particuleArray = array_create(entityParticuleCount, entityParticule);
	DropItems(x,y,particuleArray)
	
	
}

if (entityDropList != -1)
{
	DropItems(x,y,entityDropList)
	
}