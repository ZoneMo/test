.class final Lcom/tencent/map/location/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic UA:Lcom/tencent/map/location/g;


# direct methods
.method constructor <init>(Lcom/tencent/map/location/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/map/location/y;->UA:Lcom/tencent/map/location/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/map/location/y;->UA:Lcom/tencent/map/location/g;

    invoke-static {v0}, Lcom/tencent/map/location/g;->a(Lcom/tencent/map/location/g;)V

    return-void
.end method
