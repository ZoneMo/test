.class final Lcom/tencent/mm/ui/tools/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic hlR:Lcom/tencent/mm/ui/tools/el;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/el;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/em;->hlR:Lcom/tencent/mm/ui/tools/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;

    check-cast p2, Lcom/tencent/mm/pluginsdk/ui/applet/am;

    iget v0, p1, Lcom/tencent/mm/pluginsdk/ui/applet/am;->ehn:I

    iget v1, p2, Lcom/tencent/mm/pluginsdk/ui/applet/am;->ehn:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
