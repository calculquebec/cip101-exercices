import time

def get_divisor_info(n):
    """Retourne les diviseurs de n et des métadonnées associées."""
    divisors = [i for i in range(2, n) if n % i == 0]
    return {
        "divisors": divisors,
        "count": len(divisors),
        "sum": sum(divisors),
        "is_even_flags": [d % 2 == 0 for d in divisors]
    }

def is_prime(n):
    """Détermine si un nombre est premier."""
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def analyze_numbers(limit):
    """Analyse les nombres jusqu'à 'limit' et stocke des infos détaillées pour les non-premiers."""
    primes = []
    non_primes_info = {}

    for num in range(2, limit):
        if is_prime(num):
            primes.append(num)
        else:
            non_primes_info[num] = get_divisor_info(num)

    return primes, non_primes_info

# Ajuste cette limite pour augmenter l'utilisation mémoire
limit = 50000

start = time.time()
primes, non_primes = analyze_numbers(limit)
end = time.time()

print(f"Nombre de premiers trouvés : {len(primes)}")
print(f"Nombre de non-premiers stockés : {len(non_primes)}")
print(f"Temps d'exécution : {end - start:.2f} secondes")
