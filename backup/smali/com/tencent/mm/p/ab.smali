.class public Lcom/tencent/mm/p/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private ciI:Lcom/tencent/mm/model/q;

.field private coo:Lcom/tencent/mm/p/k;

.field private cop:Lcom/tencent/mm/p/v;

.field private coq:Lcom/tencent/mm/p/x;

.field private cor:Lcom/tencent/mm/p/r;

.field private cos:Lcom/tencent/mm/compatible/loader/b;

.field private cot:Lcom/tencent/mm/storage/r;

.field private cou:Lcom/tencent/mm/p/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    sput-object v0, Lcom/tencent/mm/p/ab;->bZd:Ljava/util/HashMap;

    const-string v1, "BIZINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/p/ac;

    invoke-direct {v2}, Lcom/tencent/mm/p/ac;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cop:Lcom/tencent/mm/p/v;

    .line 35
    iput-object v0, p0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    .line 36
    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    .line 37
    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    .line 129
    new-instance v0, Lcom/tencent/mm/model/q;

    invoke-direct {v0}, Lcom/tencent/mm/model/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/p/ab;->ciI:Lcom/tencent/mm/model/q;

    .line 179
    new-instance v0, Lcom/tencent/mm/p/ad;

    invoke-direct {v0, p0}, Lcom/tencent/mm/p/ad;-><init>(Lcom/tencent/mm/p/ab;)V

    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cot:Lcom/tencent/mm/storage/r;

    .line 198
    new-instance v0, Lcom/tencent/mm/p/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/p/ae;-><init>(Lcom/tencent/mm/p/ab;)V

    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cou:Lcom/tencent/mm/p/m;

    return-void
.end method

.method private static yd()Lcom/tencent/mm/p/ab;
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/p/ab;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/p/ab;

    .line 41
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/tencent/mm/p/ab;

    invoke-direct {v0}, Lcom/tencent/mm/p/ab;-><init>()V

    .line 43
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/p/ab;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 45
    :cond_0
    return-object v0
.end method

.method public static ye()Lcom/tencent/mm/p/k;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 52
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->coo:Lcom/tencent/mm/p/k;

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/p/k;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/p/k;-><init>(Lcom/tencent/mm/sdk/e/af;)V

    iput-object v1, v0, Lcom/tencent/mm/p/ab;->coo:Lcom/tencent/mm/p/k;

    .line 55
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->coo:Lcom/tencent/mm/p/k;

    return-object v0
.end method

.method public static yf()Lcom/tencent/mm/p/v;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cop:Lcom/tencent/mm/p/v;

    if-nez v0, :cond_1

    .line 64
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/p/v;

    invoke-direct {v1}, Lcom/tencent/mm/p/v;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/p/ab;->cop:Lcom/tencent/mm/p/v;

    .line 67
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cop:Lcom/tencent/mm/p/v;

    return-object v0
.end method

.method public static yg()Lcom/tencent/mm/p/x;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    if-nez v0, :cond_1

    .line 76
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/p/x;

    invoke-direct {v1}, Lcom/tencent/mm/p/x;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    .line 79
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    return-object v0
.end method

.method public static yh()Lcom/tencent/mm/p/r;
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 87
    :cond_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/p/r;

    invoke-direct {v1}, Lcom/tencent/mm/p/r;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    .line 91
    :cond_1
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    return-object v0
.end method

.method public static yi()Lcom/tencent/mm/compatible/loader/b;
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "language_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 106
    :goto_0
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    return-object v0

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->sA(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public static yj()V
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/tencent/mm/p/ab;->yd()Lcom/tencent/mm/p/ab;

    move-result-object v0

    const-string v1, "MicroMsg.SubCoreBiz"

    const-string v2, "resetResContextImp"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "brand_i18n.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.mm.bizi18nres"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/compatible/loader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/mm/compatible/loader/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    .line 133
    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 4
    .parameter

    .prologue
    .line 144
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 145
    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 147
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "brand_i18n.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm.bizi18nres"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/compatible/loader/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/mm/compatible/loader/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/p/ab;->cos:Lcom/tencent/mm/compatible/loader/b;

    .line 150
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->cot:Lcom/tencent/mm/storage/r;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->b(Lcom/tencent/mm/storage/r;)V

    .line 152
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->cou:Lcom/tencent/mm/p/m;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->a(Lcom/tencent/mm/p/m;)V

    .line 153
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 127
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public final qy()V
    .locals 2

    .prologue
    .line 157
    const/16 v0, 0x37

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 158
    const/16 v0, 0x39

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->ciI:Lcom/tencent/mm/model/q;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    invoke-virtual {v0}, Lcom/tencent/mm/p/x;->release()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/p/ab;->coq:Lcom/tencent/mm/p/x;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/p/ab;->cor:Lcom/tencent/mm/p/r;

    .line 169
    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->cot:Lcom/tencent/mm/storage/r;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/r;)V

    .line 171
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/p/ab;->cou:Lcom/tencent/mm/p/m;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/m;)V

    .line 173
    :cond_2
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/tencent/mm/p/ab;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
