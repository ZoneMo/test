.class final Lcom/tencent/mm/pluginsdk/ui/tools/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic fun:Lcom/tencent/mm/pluginsdk/ui/tools/h;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/tools/h;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/k;->fun:Lcom/tencent/mm/pluginsdk/ui/tools/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 456
    check-cast p1, Lcom/tencent/mm/pluginsdk/ui/tools/l;

    check-cast p2, Lcom/tencent/mm/pluginsdk/ui/tools/l;

    iget-object v0, p1, Lcom/tencent/mm/pluginsdk/ui/tools/l;->fuo:Ljava/lang/String;

    iget-object v1, p2, Lcom/tencent/mm/pluginsdk/ui/tools/l;->fuo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
