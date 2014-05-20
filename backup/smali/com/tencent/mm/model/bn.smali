.class final Lcom/tencent/mm/model/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/l;


# instance fields
.field final synthetic ciS:Lcom/tencent/mm/network/r;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/r;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/tencent/mm/model/bn;->ciS:Lcom/tencent/mm/network/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uN()Lcom/tencent/mm/network/r;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/tencent/mm/model/bn;->ciS:Lcom/tencent/mm/network/r;

    return-object v0
.end method
