.class public Lcom/tencent/mm/ui/RoomInfoUI;
.super Lcom/tencent/mm/ui/base/preference/MMPreference;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/pluginsdk/ai;
.implements Lcom/tencent/mm/sdk/e/al;
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field private bNl:Ljava/lang/String;

.field private bOk:Z

.field private cIG:Lcom/tencent/mm/ui/base/preference/n;

.field private cIr:Landroid/app/ProgressDialog;

.field private cQI:Lcom/tencent/mm/storage/i;

.field private cQb:Z

.field private cWL:Lcom/tencent/mm/storage/b;

.field private cWy:Ljava/lang/String;

.field private chz:Landroid/content/SharedPreferences;

.field private dLR:Ljava/lang/String;

.field private dgd:Lcom/tencent/mm/pluginsdk/c/b;

.field private eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

.field private goF:Ljava/lang/String;

.field private goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

.field private goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goL:Z

.field private goO:Z

.field private goP:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goR:Lcom/tencent/mm/ui/setting/SignaturePreference;

.field private goS:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

.field private goT:Lcom/tencent/mm/ui/base/preference/Preference;

.field private goU:Z

.field private goV:Z

.field private goW:I

.field private goX:Z

.field private goY:Lcom/tencent/mm/pluginsdk/ui/e;

.field goZ:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;-><init>()V

    .line 104
    iput-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 110
    new-instance v0, Lcom/tencent/mm/ui/du;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/du;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->handler:Landroid/os/Handler;

    .line 127
    iput-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    .line 134
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    .line 139
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goL:Z

    .line 141
    iput-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    .line 143
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/e;

    new-instance v1, Lcom/tencent/mm/ui/ei;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ei;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/e;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    .line 239
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goZ:Z

    .line 799
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goF:Ljava/lang/String;

    .line 1412
    new-instance v0, Lcom/tencent/mm/ui/eg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/eg;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dgd:Lcom/tencent/mm/pluginsdk/c/b;

    .line 1485
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQb:Z

    return-void
.end method

.method private Jc()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/ek;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ek;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/storage/b;)Lcom/tencent/mm/storage/b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    return-object p1
.end method

.method private a(IILcom/tencent/mm/plugin/chatroom/a/a;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x0

    const v10, 0x7f070933

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    if-eqz p2, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1127
    const-string v4, ""

    .line 1128
    const-string v0, ""

    .line 1129
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070612

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1131
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v5

    iget-object v7, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/tencent/mm/storage/c;->tt(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v7

    .line 1132
    const/16 v5, -0x74

    if-ne p2, v5, :cond_12

    invoke-static {}, Lcom/tencent/mm/plugin/a;->FK()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v7, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 1133
    const v0, 0x7f070970

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1134
    const v0, 0x7f07096f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v5, v1

    .line 1138
    :goto_1
    const/16 v8, -0x17

    if-ne p2, v8, :cond_0

    .line 1139
    const v0, 0x7f07096e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1140
    const v0, 0x7f07096c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1143
    :cond_0
    const/16 v8, -0x6d

    if-ne p2, v8, :cond_1

    .line 1144
    const v0, 0x7f070972

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1145
    const v0, 0x7f070971

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    :cond_1
    const/16 v8, -0x7a

    if-ne p2, v8, :cond_5

    .line 1149
    const v0, 0x7f07096e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v8, v7, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v8

    .line 1152
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-lez v0, :cond_11

    .line 1153
    invoke-virtual {v8}, Lcom/tencent/mm/storage/i;->ru()Ljava/lang/String;

    move-result-object v0

    .line 1155
    :goto_2
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1156
    iget-object v0, v7, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-nez v9, :cond_7

    move-object v0, v3

    .line 1158
    :cond_2
    :goto_3
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1159
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v9

    if-lez v9, :cond_3

    .line 1160
    invoke-virtual {v8}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    .line 1163
    :cond_3
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1164
    iget-object v0, v7, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    .line 1166
    :cond_4
    const v8, 0x7f07096d

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v2

    invoke-virtual {v7}, Lcom/tencent/mm/storage/b;->aAj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    invoke-virtual {p0, v8, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    :cond_5
    invoke-virtual {p3}, Lcom/tencent/mm/plugin/chatroom/a/a;->Kj()Ljava/util/List;

    move-result-object v7

    .line 1170
    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 1171
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f070612

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_a

    const v3, 0x7f070075

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/tencent/mm/ui/RoomInfoUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, v10}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/ed;

    invoke-direct {v2, p0, v7}, Lcom/tencent/mm/ui/ed;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Ljava/util/List;)V

    new-instance v3, Lcom/tencent/mm/ui/ee;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/ee;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 1207
    :goto_6
    return-void

    :cond_6
    move v0, v2

    .line 1125
    goto/16 :goto_0

    .line 1156
    :cond_7
    iget-object v9, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v9}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v9

    if-nez v9, :cond_8

    move-object v0, v3

    goto/16 :goto_3

    :cond_8
    iget-object v9, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v9, v0}, Lcom/tencent/mm/storage/b;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 1171
    goto :goto_4

    :cond_a
    const v3, 0x7f070074

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/tencent/mm/ui/RoomInfoUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1175
    :cond_b
    invoke-virtual {p3}, Lcom/tencent/mm/plugin/chatroom/a/a;->Ki()Ljava/util/List;

    move-result-object v7

    .line 1176
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 1177
    invoke-virtual {p0, v10}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v8, 0x7f07006c

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/tencent/mm/ui/RoomInfoUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :cond_c
    invoke-virtual {p3}, Lcom/tencent/mm/plugin/chatroom/a/a;->Kh()Ljava/util/List;

    move-result-object v7

    .line 1182
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 1183
    invoke-virtual {p0, v10}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v8, 0x7f07006a

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/tencent/mm/ui/RoomInfoUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    :cond_d
    invoke-virtual {p3}, Lcom/tencent/mm/plugin/chatroom/a/a;->Kg()Ljava/util/List;

    move-result-object v7

    .line 1188
    if-eqz v7, :cond_e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 1189
    invoke-virtual {p0, v10}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v8, 0x7f07006b

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7}, Lcom/tencent/mm/ui/RoomInfoUI;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v2

    invoke-virtual {p0, v8, v9}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :cond_e
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    .line 1194
    if-eqz v5, :cond_f

    .line 1195
    new-instance v1, Lcom/tencent/mm/ui/ec;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ec;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static {p0, v0, v4, v1, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_6

    .line 1202
    :cond_f
    invoke-static {p0, v0, v4}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_6

    .line 1205
    :cond_10
    const v0, 0x7f070061

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_11
    move-object v0, v3

    goto/16 :goto_2

    :cond_12
    move v5, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFx()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aiA()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0709bb

    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->kr(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "roomPref del "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07099e

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/mm/plugin/chatroom/a/d;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/chatroom/a/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    const v0, 0x7f07093f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/eb;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/eb;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/plugin/chatroom/a/d;)V

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/applet/an;

    new-instance v3, Lcom/tencent/mm/ui/ef;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/ef;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-direct {v1, p0, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/an;-><init>(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/ui/applet/au;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/an;->c(Ljava/util/LinkedList;Ljava/util/LinkedList;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/storage/b;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 310
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/b;->cS(Z)Lcom/tencent/mm/storage/b;

    .line 311
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/tencent/mm/storage/c;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 312
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    .line 313
    new-instance v2, Lcom/tencent/mm/protocal/a/ny;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/ny;-><init>()V

    .line 314
    iput-object p0, v2, Lcom/tencent/mm/protocal/a/ny;->fEJ:Ljava/lang/String;

    .line 315
    iput-object v1, v2, Lcom/tencent/mm/protocal/a/ny;->eBo:Ljava/lang/String;

    .line 316
    iput v0, v2, Lcom/tencent/mm/protocal/a/ny;->fOV:I

    .line 317
    if-eqz p2, :cond_0

    :goto_0
    iput v0, v2, Lcom/tencent/mm/protocal/a/ny;->fOW:I

    .line 318
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x31

    invoke-direct {v1, v3, v2}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 319
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 320
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/RoomInfoUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQb:Z

    return p1
.end method

.method private static aA(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 1532
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1533
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 1546
    :goto_0
    return-object v0

    .line 1536
    :cond_0
    if-nez p0, :cond_1

    move-object v0, v1

    .line 1537
    goto :goto_0

    .line 1539
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1540
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 1541
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1542
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    .line 1544
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1546
    goto :goto_0
.end method

.method private aFA()V
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_1

    .line 1596
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_2

    .line 1597
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFy()V

    .line 1605
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->notifyChanged()V

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 1608
    return-void

    .line 1598
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1602
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method private aFu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-nez v0, :cond_0

    .line 886
    const-string v0, ""

    .line 889
    :goto_0
    return-object v0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v0, v0, Lcom/tencent/mm/storage/b;->field_selfDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method private aFw()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1359
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_preferences"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    .line 1363
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_4

    .line 1364
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    .line 1372
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-eqz v0, :cond_5

    .line 1373
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->mG(I)V

    .line 1374
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_notify_new_msg"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1386
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 1387
    return-void

    :cond_3
    move v0, v2

    .line 1364
    goto :goto_0

    .line 1367
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    if-nez v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    goto :goto_1

    .line 1381
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->mG(I)V

    .line 1382
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1383
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "room_notify_new_msg"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method private aFx()V
    .locals 10

    .prologue
    const v9, 0x7f07097a

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 568
    invoke-static {}, Lcom/tencent/mm/plugin/a;->FK()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_upgrade_entry"

    invoke-interface {v0, v1, v7}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    .line 600
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 575
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-eqz v2, :cond_4

    .line 576
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/b;->aAj()I

    move-result v2

    .line 582
    if-lez v2, :cond_2

    .line 583
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goT:Lcom/tencent/mm/ui/base/preference/Preference;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 587
    :goto_1
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v3, v3, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_3

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goT:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/ui/base/preference/Preference;->setEnabled(Z)V

    .line 594
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 598
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 599
    const-string v2, "MicroMsg.RoomInfoUI"

    const-string v3, "updateChatroomUpgraderEntry during : %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goT:Lcom/tencent/mm/ui/base/preference/Preference;

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    const/16 v6, 0x28

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v9, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/base/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 591
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goT:Lcom/tencent/mm/ui/base/preference/Preference;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/ui/base/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 596
    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_upgrade_entry"

    invoke-interface {v2, v3, v7}, Lcom/tencent/mm/ui/base/preference/n;->O(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private aFy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1265
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_0

    .line 1266
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1268
    if-eqz v0, :cond_1

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    .line 1274
    :goto_0
    iget v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    if-gt v1, v2, :cond_2

    .line 1275
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    .line 1280
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 1287
    :cond_0
    :goto_2
    return-void

    .line 1271
    :cond_1
    iput v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    goto :goto_0

    .line 1277
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    goto :goto_1

    .line 1282
    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1283
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method private aFz()V
    .locals 3

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_2

    .line 1291
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFu()Ljava/lang/String;

    move-result-object v0

    .line 1292
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v0

    .line 1293
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1294
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goR:Lcom/tencent/mm/ui/setting/SignaturePreference;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    const v0, 0x7f070a3d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v2, -0x2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1299
    :cond_2
    :goto_0
    return-void

    .line 1296
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goR:Lcom/tencent/mm/ui/setting/SignaturePreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private aiA()V
    .locals 4

    .prologue
    const v3, 0x7f07092f

    .line 1254
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    .line 1256
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    if-nez v0, :cond_1

    .line 1257
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    const v0, 0x7f070073

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static az(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 1459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1472
    :goto_0
    return-object v0

    .line 1464
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1465
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1466
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/mp;

    .line 1467
    new-instance v3, Lcom/tencent/mm/storage/i;

    invoke-direct {v3}, Lcom/tencent/mm/storage/i;-><init>()V

    .line 1468
    iget-object v4, v0, Lcom/tencent/mm/protocal/a/mp;->eBo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    .line 1469
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/mp;->fDe:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1472
    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/RoomInfoUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/RoomInfoUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/storage/b;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/ui/base/preference/n;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/RoomInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/RoomInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x27b9

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_Compose"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "List_Type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    const-string v3, "@micromsg.qq.com"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "chatroom_count"

    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "chatroom_size"

    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Disabled_Selected_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Need_Group_Item"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x27ba

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_GroupFilter_Type"

    const-string v3, "@micromsg.qq.com"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "List_Type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Disabled_Selected_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Need_Group_Item"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/RoomInfoUI;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/RoomInfoUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQb:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->Jc()V

    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->uV(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bc;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/bc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQb:Z

    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    const v0, 0x7f0709ee

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/mm/ui/dz;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/dz;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/ui/ea;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/ea;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Landroid/app/ProgressDialog;)V

    invoke-static {v1, v2}, Lcom/tencent/mm/model/bv;->a(Ljava/lang/String;Lcom/tencent/mm/model/ca;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/ba;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tX(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bb;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/bb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/bw;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/tencent/mm/storage/bw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ce(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->Jc()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->finish()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFA()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/mm/ui/RoomInfoUI;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/RoomInfoUI;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aiA()V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/ui/RoomInfoUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const v4, 0x7f07092f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 409
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aIj()Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    .line 411
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_10

    .line 412
    iget v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    if-nez v0, :cond_7

    .line 413
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    .line 420
    :goto_0
    const/4 v0, 0x0

    .line 421
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-eqz v3, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v0, v0, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    .line 423
    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/b;->aAe()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    .line 426
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 427
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    .line 432
    :goto_1
    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v3, "initBaseChatRoomView()"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "roominfo_contact_anchor"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_name"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/SignaturePreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_notify_new_msg"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_save_to_contact"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goP:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_placed_to_the_top"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_nickname"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/SignaturePreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goR:Lcom/tencent/mm/ui/setting/SignaturePreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_upgrade_entry"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goT:Lcom/tencent/mm/ui/base/preference/Preference;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->arX()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v1, v1, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->qH(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->arY()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->arV()V

    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "updatePlaceTop()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "updateSaveToContact()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goP:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "contact == null !!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "updateDisplayNickname()"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "MicroMsg.RoomInfoUI"

    const-string v1, "members == null !!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_6

    .line 442
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-nez v0, :cond_5

    .line 443
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    if-eqz v0, :cond_17

    .line 444
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->z(Ljava/util/ArrayList;)V

    .line 451
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 452
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goY:Lcom/tencent/mm/pluginsdk/ui/e;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/pluginsdk/ui/e;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    new-instance v1, Lcom/tencent/mm/ui/er;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/er;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aa;)V

    .line 521
    :cond_6
    new-instance v0, Lcom/tencent/mm/ui/es;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/es;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 529
    return-void

    .line 415
    :cond_7
    const v0, 0x7f070073

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    goto/16 :goto_1

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_placed_to_the_top"

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_placed_to_the_top"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "room_save_to_contact"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v1, "room_msg_show_username"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goS:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goS:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_msg_show_username"

    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 433
    :cond_10
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    if-eqz v0, :cond_11

    .line 434
    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goV:Z

    .line 435
    const v0, 0x7f0709a5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "roominfo_contact_anchor"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    new-instance v2, Lcom/tencent/mm/ui/et;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/et;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/pluginsdk/ui/applet/aj;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    new-instance v2, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/base/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/base/preference/n;->b(Lcom/tencent/mm/ui/base/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/c/a/dr;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/dr;-><init>()V

    iget-object v3, v2, Lcom/tencent/mm/c/a/dr;->bOH:Lcom/tencent/mm/c/a/ds;

    iput-object v0, v3, Lcom/tencent/mm/c/a/ds;->bOe:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    const v0, 0x7f0709a2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/ui/ej;

    invoke-direct {v3, p0, v2}, Lcom/tencent/mm/ui/ej;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/c/a/dr;)V

    invoke-static {p0, v0, v1, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    move-object v0, p0

    .line 438
    :goto_7
    iget-object v0, v0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 437
    :cond_11
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->vT(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->removeAll()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const v3, 0x7f050034

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "roominfo_contact_anchor"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->a(Lcom/tencent/mm/ui/base/preference/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->cu(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    iget v0, v0, Lcom/tencent/mm/storage/i;->field_deleteFlag:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->ct(Z)Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_notify_new_msg"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goI:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    const-string v3, "room_placed_to_the_top"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/base/preference/n;->wn(Ljava/lang/String;)Lcom/tencent/mm/ui/base/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_preferences"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goQ:Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_8
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "room_notify_new_msg"

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_9
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    goto/16 :goto_7

    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "room_placed_to_the_top"

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8

    :cond_15
    move v0, v2

    goto :goto_9

    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "room_notify_new_msg"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    move-object v0, p0

    goto/16 :goto_7

    .line 446
    :cond_17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 447
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->d(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_6
.end method

.method public final Gc()I
    .locals 1

    .prologue
    .line 403
    const v0, 0x7f050033

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1552
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pre is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    .line 1555
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "now is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1560
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    .line 1561
    :cond_1
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_2

    move-object v0, p4

    .line 1562
    check-cast v0, Lcom/tencent/mm/plugin/chatroom/a/a;

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->a(IILcom/tencent/mm/plugin/chatroom/a/a;)V

    .line 1563
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFA()V

    .line 1565
    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0xb3

    if-ne v0, v1, :cond_3

    .line 1566
    const/16 v0, -0x42

    if-ne p2, v0, :cond_3

    .line 1567
    const v0, 0x7f070935

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    .line 1568
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFA()V

    .line 1592
    :cond_3
    :goto_0
    return-void

    .line 1575
    :cond_4
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 1577
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1586
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aiA()V

    goto :goto_0

    .line 1580
    :sswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFA()V

    goto :goto_1

    .line 1585
    :sswitch_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFA()V

    goto :goto_1

    .line 1577
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xb3 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1612
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/tencent/mm/ui/RoomInfoUI;->ca(Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/preference/n;Lcom/tencent/mm/ui/base/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 667
    invoke-virtual {p2}, Lcom/tencent/mm/ui/base/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v2, "room_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_mode_name_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Contact_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    .line 726
    :cond_0
    :goto_0
    return v8

    .line 672
    :cond_1
    const-string v2, "room_upgrade_entry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 675
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v0, v0, Lcom/tencent/mm/storage/b;->field_roomowner:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/b;->aAj()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/a;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_3
    const-string v2, "room_qr_code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/setting/SelfQRCodeUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "from_userName"

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 686
    :cond_4
    const-string v2, "room_notify_new_msg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 687
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-eqz v0, :cond_5

    move v1, v8

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/bm;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/tencent/mm/storage/bm;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bT(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/k;->a(Ljava/lang/String;Lcom/tencent/mm/storage/i;)I

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFw()V

    goto/16 :goto_0

    :cond_7
    move v0, v8

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->i(Lcom/tencent/mm/storage/i;)V

    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/z/i;

    invoke-direct {v2, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_preferences"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "room_notify_new_msg"

    iget-boolean v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goX:Z

    if-nez v3, :cond_b

    :goto_4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->j(Lcom/tencent/mm/storage/i;)V

    goto :goto_3

    :cond_b
    move v1, v8

    goto :goto_4

    .line 690
    :cond_c
    const-string v2, "room_save_to_contact"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 691
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_preferences"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    :cond_d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->chz:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "room_save_to_contact"

    if-nez v2, :cond_e

    :goto_5
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    invoke-static {v0}, Lcom/tencent/mm/model/w;->n(Lcom/tencent/mm/storage/i;)V

    const v0, 0x7f070949

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :goto_6
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->Jc()V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_e
    move v1, v8

    goto :goto_5

    :cond_f
    invoke-static {v0}, Lcom/tencent/mm/model/w;->l(Lcom/tencent/mm/storage/i;)V

    const v0, 0x7f070948

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_6

    .line 694
    :cond_10
    const-string v2, "room_placed_to_the_top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 695
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goF:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mm/model/w;->f(Ljava/lang/String;Z)V

    :goto_7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "room_placed_to_the_top"

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/o;->ud(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/z/i;

    invoke-direct {v1, v4}, Lcom/tencent/mm/z/i;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mm/model/w;->e(Ljava/lang/String;Z)V

    goto :goto_7

    .line 698
    :cond_12
    const-string v2, "room_nickname"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 699
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/tencent/mm/ui/contact/ModRemarkNameUI;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Contact_mode_name_type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v0

    :cond_13
    const-string v3, "Contact_Nick"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_User"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 702
    :cond_14
    const-string v2, "room_msg_show_username"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 703
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goF:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Lcom/tencent/mm/ui/RoomInfoUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "room_msg_show_username"

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    if-nez v0, :cond_15

    move v0, v1

    :goto_8
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    if-nez v0, :cond_16

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goL:Z

    goto/16 :goto_0

    :cond_15
    move v0, v8

    goto :goto_8

    :cond_16
    move v0, v8

    goto :goto_9

    .line 706
    :cond_17
    const-string v2, "room_set_chatting_background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 707
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isApplyToAll"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "username"

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 710
    :cond_18
    const-string v2, "room_search_chatting_content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 711
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "search_chat_content"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "finish_direct"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 714
    :cond_19
    const-string v2, "room_clear_chatting_history"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 715
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_1a

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-string v3, ""

    const v4, 0x7f0709ca

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0709c1

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/ui/dv;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/dv;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-static/range {v0 .. v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_1a
    const v0, 0x7f070064

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 718
    :cond_1b
    const-string v2, "room_report_it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/ExposeUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "k_username"

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "k_expose_scene"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 722
    :cond_1c
    const-string v2, "room_del_quit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " quit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v1, v2, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_b
    if-eqz v1, :cond_1d

    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " quit talkroom"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f070936

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/dy;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/ui/dy;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Z)V

    invoke-static {v0, v2, v3, v4, v7}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_1e
    move v1, v8

    goto :goto_b
.end method

.method public final c(Landroid/content/SharedPreferences;)Lcom/tencent/mm/ui/base/preference/x;
    .locals 1
    .parameter

    .prologue
    .line 1664
    new-instance v0, Lcom/tencent/mm/ui/base/preference/b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/base/preference/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1617
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1620
    :cond_1
    const-string v0, "@chatroom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1621
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1624
    :cond_2
    const-string v0, "MicroMsg.RoomInfoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mm/ui/el;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/el;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const v6, 0x7f0709bb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    if-eq p2, v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 354
    :pswitch_0
    if-eqz p3, :cond_0

    .line 358
    const-string v0, "Select_Contact"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-static {v4}, Lcom/tencent/mm/model/w;->co(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 360
    const v0, 0x7f070975

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    :cond_3
    :goto_1
    if-eqz v1, :cond_6

    .line 365
    const v0, 0x7f070938

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 364
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_3
    move v1, v0

    goto :goto_2

    .line 368
    :cond_6
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 372
    new-instance v1, Lcom/tencent/mm/plugin/chatroom/a/a;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/chatroom/a/a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 373
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    const v0, 0x7f070932

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/eq;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/eq;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/plugin/chatroom/a/a;)V

    invoke-static {p0, v0, v3, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIr:Landroid/app/ProgressDialog;

    .line 380
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0

    .line 384
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->finish()V

    goto/16 :goto_0

    .line 389
    :pswitch_2
    if-eqz p3, :cond_0

    .line 392
    const-string v0, "Contact_Nick"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/au;->R(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/storage/b;->field_chatroomname:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iput-object v0, v3, Lcom/tencent/mm/storage/b;->field_selfDisplayName:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mm/storage/c;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    new-instance v2, Lcom/tencent/mm/protocal/a/nx;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/nx;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/mm/protocal/a/nx;->fEJ:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/protocal/a/nx;->eBo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/protocal/a/nx;->fDf:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/az;

    const/16 v3, 0x30

    invoke-direct {v1, v3, v2}, Lcom/tencent/mm/storage/az;-><init>(ILcom/tencent/mm/am/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->Jc()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFz()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_3

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 157
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 159
    const-string v0, "NetSceneLbsRoomGetMember"

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dgd:Lcom/tencent/mm/pluginsdk/c/b;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/b;->a(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/b;)V

    .line 160
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 161
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/c;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 163
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->a(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chat_User"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dLR:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RoomInfo_Id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Single_Chat_Talker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bNl:Ljava/lang/String;

    .line 181
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    .line 183
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is_Chatroom"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    .line 184
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is_Lbsroom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goO:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goF:Ljava/lang/String;

    .line 188
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_2

    .line 189
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->FR()V

    .line 194
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_3

    .line 195
    new-instance v0, Lcom/tencent/mm/ui/em;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/em;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    .line 198
    :cond_3
    :goto_1
    return-void

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dLR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dLR:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bNl:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-wide v3, v3, Lcom/tencent/mm/storage/b;->field_modifytime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/mm/ui/eo;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/eo;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/model/au;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->onDetach()V

    .line 328
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/b/a;->dismiss()V

    .line 329
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 330
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 331
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 332
    const-string v0, "NetSceneLbsRoomGetMember"

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->dgd:Lcom/tencent/mm/pluginsdk/c/b;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/c/b;->b(Ljava/lang/String;Lcom/tencent/mm/pluginsdk/c/b;)V

    .line 334
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 336
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/c;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 339
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 340
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->b(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 343
    :cond_2
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onDestroy()V

    .line 344
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onPause()V

    .line 288
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWL:Lcom/tencent/mm/storage/b;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goU:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->a(Ljava/lang/String;Lcom/tencent/mm/storage/b;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_6

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cQI:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    const v0, 0x7f070a3d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, -0x2

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aiA()V

    .line 245
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFw()V

    .line 246
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->bOk:Z

    if-eqz v0, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFx()V

    .line 248
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFz()V

    .line 250
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFy()V

    .line 251
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 253
    invoke-super {p0}, Lcom/tencent/mm/ui/base/preference/MMPreference;->onResume()V

    .line 254
    iget-boolean v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goZ:Z

    if-nez v0, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "need_matte_high_light_item"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 257
    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cIG:Lcom/tencent/mm/ui/base/preference/n;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/base/preference/n;->wp(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x3

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->setSelection(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/RoomInfoUI;->aFa()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/ep;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/ep;-><init>(Lcom/tencent/mm/ui/RoomInfoUI;I)V

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    :cond_4
    iput-boolean v1, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goZ:Z

    .line 262
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 243
    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->goH:Lcom/tencent/mm/ui/setting/SignaturePreference;

    const v2, 0x7f070940

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/RoomInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/setting/SignaturePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->cWy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoUI;->eHm:Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListExpandPreference;->notifyChanged()V

    .line 1660
    :cond_0
    return-void
.end method
