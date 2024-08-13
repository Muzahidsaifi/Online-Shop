package hibernateconfig;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class App {
	static StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure().build();
	static Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build(); 
	static SessionFactory sf=null;
	public static SessionFactory opensesSessionFactory() {
		if (sf==null) {
			sf=meta.getSessionFactoryBuilder().build();
			return sf;
		}
		else {
			return sf;
		}
	}
	
}
