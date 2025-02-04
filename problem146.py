class LRUCache:

    def __init__(self, capacity: int):
        self.LRUCache_hashMap = OrderedDict()
        self.cap = capacity

    def get(self, key: int) -> int:
        if key in self.LRUCache_hashMap:
            self.LRUCache_hashMap.move_to_end(key)
            return self.LRUCache_hashMap[key]
        else:
            return -1

    def put(self, key: int, value: int) -> None:
        if key in self.LRUCache_hashMap:
            self.LRUCache_hashMap.move_to_end(key)
        self.LRUCache_hashMap[key] = value

        if len(self.LRUCache_hashMap) > self.cap:
            self.LRUCache_hashMap.popitem(last=False)

        
