-- This implementation is based on the one presented by Danny Gratzer (jozefg) at https://jozefg.bitbucket.io/posts/2013-11-09-iso-recursive-types.html

main :: IO ()
main = print (y factorial 5)

newtype Mu f = Mu (f (Mu f))
unroll (Mu f) = f
roll = Mu

newtype F' c a = F' (a -> c)
unF (F' f) = f
type F c = Mu (F' c)

unroll' = unF  . unroll
roll'   = roll . F'

y f = (\x -> f (unroll' x x)) $ roll' (\x -> f (unroll' x x))

factorial f n = if n == 0 then 1 else n * (f (n - 1))
