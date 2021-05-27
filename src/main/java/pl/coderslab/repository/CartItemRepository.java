package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {
}
